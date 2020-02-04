<?php

namespace app\controllers;

use app\models\Juegos;
use app\models\JuegosSearch;
use Yii;
use yii\filters\VerbFilter;
use yii\web\Controller;
use yii\web\NotFoundHttpException;

class JuegosController extends Controller
{
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::class,
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    public function actionIndex()
    {
        $JuegosSearch = new JuegosSearch();
        Yii::$app->view->params['totalG'] = $JuegosSearch->getAllGeneros();
        Yii::$app->view->params['totalC'] = $JuegosSearch->getAllConsolas();

        $dataProvider = $JuegosSearch->search(Yii::$app->request->queryParams);
        return $this->render('index', [
            'dataProvider' => $dataProvider,
            'juegosSearch' => $JuegosSearch,
        ]);
    }

    public function actionView($id)
    {
        $model = $this->findJuego($id);

        return $this->render('view', [
            'model' => $model,
        ]);
    }

    public function actionCreate()
    {
        $model = new Juegos();
        Yii::$app->view->params['totalG'] = $model->getAllGeneros();
        Yii::$app->view->params['totalC'] = $model->getAllConsolas();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['index']);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    public function actionUpdate($id)
    {
        $model = $this->findJuego($id);
        Yii::$app->view->params['totalG'] = $model->getAllGeneros();
        Yii::$app->view->params['totalC'] = $model->getAllConsolas();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['index']);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    public function actionDelete($id)
    {
        $model = $this->findJuego($id);
        $model->delete();
        Yii::$app->session->setFlash('success', 'Fila borrada con éxito.');
        return $this->redirect(['index']);
    }

    protected function findJuego($id)
    {
        if (($juego = Juegos::findOne($id)) === null) {
            throw new NotFoundHttpException('No se ha encontrado el juego.');
        }

        return $juego;
    }
}
