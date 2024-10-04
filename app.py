from flask import Flask, request

app = Flask(__name__)

@app.route('/webhook', methods=['POST'])
def webhook():
    data = request.json  # Die POST-Daten vom Webhook (z.B. Twilio-Daten)
    print(f"Empfangene Webhook-Daten: {data}")
    
    # Verarbeite die empfangenen Daten hier
    # Du kannst die Daten in einer Datenbank speichern oder eine Aktion ausführen
    
    return 'Webhook empfangen!', 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
